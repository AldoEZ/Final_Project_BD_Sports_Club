/*
AUTOR: 
QUEZADA OLIVARES EMIR

FECHA: 25/11/2025
DESCRIPCION:

 Script de pruebas idempotente para triggers:
  - tr_empleado  (verifica antiguedad >= 5 anios al actualizar abono)
  - tr_correo    (valida dominios permitidos al insert/update)
  - tr_pago      (insert/delete/update pagos: valida cuota y ajusta socio)
*/

set nocount on;

-- Este script garantiza que una falla de ejecucion provoque rollback de la transaccion abierta
-- dentro de cada bloque try/catch.
-- nota: usamos xact_abort para mayor seguridad. el catch se encargara de asegurar el rollback.
--------------------------------------------------------------------------------

-- ---------------------------------------------------------------------
-- 1) Prueba tr_empleado
-- ---------------------------------------------------------------------
print '--- Test: tr_empleado ---';

set xact_abort on;
begin try
    begin tran;
        update usuario.empleado
        set abono = 1
        where usuario_id = 31;
        print('ERROR. El trigger no bloquea update con <5 anios.')
    rollback tran;
end try
begin catch
    if xact_state() <> 0 rollback tran;
    print('OK. El trigger bloque updates con <5 anios.')
end catch;

set xact_abort on;
begin try
    begin tran;
        set identity_insert usuario.usuario_web on;
        
        insert into usuario.usuario_web(usuario_id, tipo_usuario, usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
            values (1000, 'E','empleado1000','pass1000','Analilia','Garza','Ortega',4);
        
        set identity_insert usuario.usuario_web off;
        
        insert into usuario.empleado(usuario_id,nss,fecha_cumpleanios,fecha_ingreso,sueldo,abono,edad,correo,maestro,puesto_id) 
            values (1000,80000002020,'1980-10-07','2010-11-10',14600.00,0,null,'victor.quezada@club.com',0x00,10);
        
        update usuario.empleado
        set abono = 1
        where usuario_id = 1000;
        
        declare @ab int = (select abono from usuario.empleado where usuario_id = 1000);
        if @ab = 1
            print('OK. El trigger permite updates con >= 5 anios.')
        else
            print('ERROR. El trigger permite updates con >= 5 anios pero no se actualizo el registro.')
    rollback tran; 
end try
begin catch
    if xact_state() <> 0 rollback tran;
    print('ERROR. El trigger no permite updates con >= 5 anios.' + error_message())
end catch;

-- ---------------------------------------------------------------------
-- 2) Prueba tr_correo
-- ---------------------------------------------------------------------
print '--- Test: tr_correo ---';

set xact_abort on;
begin try
    begin tran;
        update usuario.correo
        set correo = 'algo@no-permitido.test'
        where usuario_id = 5;
        print ('ERROR. El trigger no bloquea la actualizacion con un formato de correo incorrecto.')
    rollback tran;
end try
begin catch
    if xact_state() <> 0 rollback tran;
    print ('OK. El trigger bloqua la actualizacion con un formato de correo incorrecto.')
end catch;

set xact_abort on;
begin try
    begin tran;
        update usuario.correo
        set correo = 'algo@hotmail.com'
        where correo_id = 5;
        
        declare @c varchar(200) = (select correo from usuario.correo where correo_id = 5);
        if @c like '%@gmail.com' or @c like '%@hotmail.com' or @c like '%@club.com'
            print ('OK. El trigger permite la actualizacion de un correo valido.')
        else
            print ('ERROR. El trigger no permite la actualizacion de un correo valido')
    rollback tran;
end try
begin catch
    if xact_state() <> 0 rollback tran;
    print ('ERROR. El trigger no permite la actualizacion de un correo valido')
end catch;

set xact_abort on;
begin try
    begin tran;
        set identity_insert usuario.usuario_web on;
        
        insert into usuario.usuario_web(usuario_id, tipo_usuario, usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
            values (1001, 'E','empleado1001','pass1001','Claudio','Jaramillo','Fox',4);
        
        set identity_insert usuario.usuario_web off;
        
        insert into usuario.socio(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
            values (1001,2,167,64,null,'2025-09-18 18:00:00',0x01,2,'C',100000000918,'E');
        
        insert into usuario.correo(correo,usuario_id) 
            values ('prueba@gmail.com',1001);
        
        declare @c2 varchar(200) = (select correo from usuario.correo where usuario_id = 1001);
        if @c2 like '%@hotmail.com' or @c2 like '%@gmail.com' or @c2 like '%@club.com'
            print ('OK. El trigger permite la insercion de un formato valido.')
        else
            print ('ERROR. El trigger permite la insercion de un formato valido pero no se actualiza.')
    rollback tran;
end try
begin catch
    if xact_state() <> 0 rollback tran;
    print ('ERROR. El trigger no permite la insercion un formato valido para el correo.' + error_message())
end catch;

set xact_abort on;
begin try
    begin tran;
        set identity_insert usuario.usuario_web on;
        
        insert into usuario.usuario_web(usuario_id, tipo_usuario, usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
            values (1002, 'E','empleado1002','pass1002','Julio','Ibañez','Solis',4);
        
        set identity_insert usuario.usuario_web off;
        
        insert into usuario.socio(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
            values (1002,1,167,64,null,'2025-09-18 18:00:00',0x01,2,'C',100000000618,'E');
        
        insert into usuario.correo(correo,usuario_id) 
            values ('prueba@gmail.com.mx',1002);
        
        print ('ERROR. El trigger permite la insercion de un formato invalido.')
    rollback tran;
end try
begin catch
    if xact_state() <> 0 rollback tran;
    print ('OK. El trigger bloque la insercion de un formato invalido.' + error_message())
end catch;

-- ---------------------------------------------------------------------
-- 3) Prueba tr_pago
-- ---------------------------------------------------------------------
-- Test: insert cuota incorrecta (esperamos que falle)
print ('--- Test: tr_pago ----')
set xact_abort on;
begin
    begin try
        begin tran;
            insert into operacion.pago(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
                values (3,200,'2025-01-01 10:00:00','e',null,null,null,null,1);
            
            print ('ERROR. El trigger no bloquea la insercion de cuotas incorrectas.')
        rollback tran;
    end try
    begin catch
        if xact_state() <> 0 rollback tran;
        print ('OK. El trigger bloquea correctamente la insercion de cuotas incorrectas')
    end catch;
    
    -- Test: Insert cuota correcta (500) y actualizacion de meses_adeudados y estado_socio
    set xact_abort on;
    begin try
        begin tran;
            
            set identity_insert usuario.usuario_web on;
            
            insert into usuario.usuario_web(usuario_id, tipo_usuario, usuario,contrasenia,nombre_pila,apellido_paterno,apellido_materno,direccion_id) 
                values (2000, 'e','empleado2000','pass2000','cain','garza','ortega',4);
            
            set identity_insert usuario.usuario_web off;
            
            insert into usuario.socio(usuario_id,sexo_id,estatura,peso,fecha_nacimiento,fecha_inicio,foto,meses_adeudados,estado_socio,numero_socio,tipo_membresia) 
                values (2000,1,177,78,'1999-09-29','2025-08-01 09:00:00',0x01,2,'a',100000000115,'v');
            
            -- Lectura previa
            declare @meses_before int = (select meses_adeudados from usuario.socio where usuario_id = 2000);
            
            insert into operacion.pago(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
                values (1,500,'2025-06-02 11:00:00','t','banco centro','2025-07-01 00:00:00','2026-01-01 00:00:00',4111111111110606,2000);
            
            insert into operacion.pago(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
                values (2,500,'2025-06-02 11:20:00','t','banco centro','2025-07-01 00:00:00','2026-01-01 00:00:00',4111111111110606,2000);
            
            -- luego del insert, el trigger deberia haber ajustado meses_adeudaos y estado_socio
            declare @meses_after int = (select meses_adeudados from usuario.socio where usuario_id = 2000);
            declare @estado_after char(1) = (select estado_socio from usuario.socio where usuario_id = 2000);
            
            if @meses_after = 0 and @estado_after = 'c'
                print ('OK. El trigger permte la cuota correcta y las actualizaciones son exitosas.')
            else
                print ('ERROR. El trigger permite la cuota correcta, pero las actualizaciones no fueron exitosas. ' 
                   + 'meses adeudados: ' + cast(@meses_after as varchar(10)) 
                   + '. estado: ' + cast(@estado_after as varchar(1)));
        
        rollback tran;
    end try
    begin catch
        if xact_state() <> 0 rollback tran;
        print ('ERROR. El trigger no permite la insercion de la cuota correcta.' + error_message())
    end catch;
    
    -- test delete: insertamos temporalmente un pago y luego lo borramos para evaluar efecto del delete
    set xact_abort on;
    begin try
        begin tran;
            update usuario.socio
            set estado_socio = 'c'
            where usuario_id = 10;
            
            -- aseguramos un pago a borrar
            insert into operacion.pago(numero_pago,cuota,fecha,metodo_pago,banco,mes_vigencia,anio_vigencia,numero_tarjeta,usuario_id) 
                values (3,500,'2025-06-02 11:00:00','t','banco centro','2025-07-01 00:00:00','2026-01-01 00:00:00',4111111111110606,10);
            
            begin
                delete from operacion.pago where usuario_id = 10 and numero_pago = 3;
            end
            
            -- comprobamos los efectoe en la tabla socio
            declare @mes_del int = (select meses_adeudados from usuario.socio where usuario_id = 10);
            declare @est_del char(1) = (select estado_socio from usuario.socio where usuario_id = 10);
            
            if @mes_del = 1 and @est_del = 'a'
                print ('OK. El trigger aumenta los meses de adeudo y el estado del socio correctamente.')
            else 
                print ('ERROR. El trigger no aumenta los meses de adeudo y el estado del socio correctamente.' +
                ' meses de adeudo: '+cast(@mes_del as varchar(10)) + ' estado del socio: '+cast(@est_del as varchar(1)))
        rollback tran;
    end try
    begin catch
        if xact_state() <> 0 rollback tran;
        print ('ERROR. El trigger no permite la eliminacion correctamente.')
    end catch;
    
    -- test update: intentar actualizar cuota a valor invalido (debe fallar si el trigger valida updates)
    set xact_abort on;
    begin try
        begin tran;
            -- intentamos update a cuota distinta (esto debe activar la validacion en el trigger)
            update operacion.pago set cuota = 123 where numero_pago = 1;
            
            print ('ERROR. El trigger permite cuotas incorrectas.')
        rollback tran;
    end try
    begin catch
        if xact_state() <> 0 rollback tran;
        print ('OK. El trigger bloquea la actualizacion de cuotas incorrectas.')
    end catch;
end

print '--- Fin de todas las pruebas (todas las transacciones se revirtieron) ---';
