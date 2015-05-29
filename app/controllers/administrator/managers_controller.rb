class Administrator::ManagersController < AdministratorController
  
   before_action :set_manager, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
    render 'administrator/managers/index'
  end

  def edit
    @manager = Manager.find(params[:id])
    render 'administrator/managers/edit'
    end

    def new
    @manager = Manager.new
    render 'administrator/managers/new'
    end

  # POST /managers
  # POST /managers.json
  def create
    @manager = Manager.create(manager_params)

    respond_to do |format|
      if @manager.save
        format.html { redirect_to '/administrator/managers', notice: 'Product category was successfully created.' }
        format.json { render :show, status: :created, location: @manager }
      else
        format.html { render :new }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managers/1
  # PATCH/PUT /managers/1.json
  def update
    respond_to do |format|
      if @manager.update(manager_params)
        format.html { redirect_to '/administrator/managers', notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @manager }
      else
        format.html { render :edit }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

   def destroy
    @manager.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Информация обновлена' }
      format.json { head :no_content }
    end
  end

  # DELETE /managers/1
  # DELETE /managers/1.jso

  private

  def manager_params
      params.require(:manager).permit(:name, :description, :languages, :skype, :avatar, :email, :phone )
  end

  def set_manager
      @manager = Manager.find(params[:id])
    end

end