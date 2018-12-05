namespace :tareas do
  desc "TODO"
  task crearsubastas: :environment do
   t = Time.new
   if  t.day = 3
      @home = Home.all
      redirect_to controller: 'reservations',action: 'index', nombre: @home.nombre, id: @home.id
      @reservas=Reservation.all
      @subastas=Subasta.all
      #t=Time.new
      f = Date.new t.year,t.month,t.day
      @reservas.each do |res|
         res.fecha_ini= f >> 6
         res.save
         @subasta=Subasta.new
         @subasta.titulo = res.nombre
         @subasta.reservation_id = res.id
         @subasta.fechainicio = f
         @subasta.save
         #create(res.nombre,res.id,f)
      end
   end
  end
end
