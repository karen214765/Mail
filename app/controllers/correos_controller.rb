class CorreosController < ApplicationController
  # GET /correos
  # GET /correos.xml
  def index
    @correos = Correo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @correos }
    end
  end

  # GET /correos/1
  # GET /correos/1.xml
  def show
    @correo = Correo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @correo }
    end
  end

  # GET /correos/new
  # GET /correos/new.xml
  def new
    @correo = Correo.new
    @correo_plantilla=CorreoPlantilla.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @correo }
    end
  end

  # GET /correos/1/edit
  def edit
    @correo = Correo.find(params[:id])
  end

  # POST /correos
  # POST /correos.xml
  def create
    @correo = Correo.new(params[:correo])

    respond_to do |format|
      if @correo.save
        format.html { redirect_to(@correo, :notice => 'Correo was successfully created.') }
        format.xml  { render :xml => @correo, :status => :created, :location => @correo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @correo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /correos/1
  # PUT /correos/1.xml
  def update
    @correo = Correo.find(params[:id])

    respond_to do |format|
      if @correo.update_attributes(params[:correo])
        format.html { redirect_to(@correo, :notice => 'Correo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @correo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /correos/1
  # DELETE /correos/1.xml
  def destroy
    @correo = Correo.find(params[:id])
    @correo.destroy

    respond_to do |format|
      format.html { redirect_to(correos_url) }
      format.xml  { head :ok }
    end
  end
end
