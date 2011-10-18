class CorreoPlantillasController < ApplicationController
  # GET /correo_plantillas
  # GET /correo_plantillas.xml
  def index
    @correo_plantillas = CorreoPlantilla.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @correo_plantillas }
    end
  end

  # GET /correo_plantillas/1
  # GET /correo_plantillas/1.xml
  def show
    @correo_plantilla = CorreoPlantilla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @correo_plantilla }
    end
  end

  # GET /correo_plantillas/new
  # GET /correo_plantillas/new.xml
  def new
    @correo_plantilla = CorreoPlantilla.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @correo_plantilla }
    end
  end

  # GET /correo_plantillas/1/edit
  def edit
    @correo_plantilla = CorreoPlantilla.find(params[:id])
  end

  # POST /correo_plantillas
  # POST /correo_plantillas.xml
  def create
    @correo_plantilla = CorreoPlantilla.new(params[:correo_plantilla])

    respond_to do |format|
      if @correo_plantilla.save
          UserMailer.correo_plantilla(@correo_plantilla).deliver
          format.html { redirect_to(@correo_plantilla, :notice => 'Correo plantilla was successfully created.') }
          format.xml  { render :xml => @correo, :status => :created, :location => @correo }
        
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @correo_plantilla.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /correo_plantillas/1
  # PUT /correo_plantillas/1.xml
  def update
    @correo_plantilla = CorreoPlantilla.find(params[:id])

    respond_to do |format|
      if @correo_plantilla.update_attributes(params[:correo_plantilla])
        UserMailer.correo_plantilla(@correo_plantilla).deliver
        format.html { redirect_to(@correo_plantilla, :notice => 'Correo plantilla was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @correo_plantilla.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /correo_plantillas/1
  # DELETE /correo_plantillas/1.xml
  def destroy
    @correo_plantilla = CorreoPlantilla.find(params[:id])
    @correo_plantilla.destroy

    respond_to do |format|
      format.html { redirect_to(correo_plantillas_url) }
      format.xml  { head :ok }
    end
  end
end
