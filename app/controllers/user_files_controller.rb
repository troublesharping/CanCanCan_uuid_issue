class UserFilesController < ApplicationController
  load_and_authorize_resource find_by: :uuid

  # GET /user_files or /user_files.json
  def index
  end

  # GET /user_files/1 or /user_files/1.json
  def show
  end

  # GET /user_files/new
  def new
  end

  # GET /user_files/1/edit
  def edit
  end

  # POST /user_files or /user_files.json
  def create
    @user_file.uuid = SecureRandom.uuid if @user_file.uuid.blank?
    respond_to do |format|
      if @user_file.save
        format.html { redirect_to @user_file, notice: "User file was successfully created." }
        format.json { render :show, status: :created, location: @user_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_files/1 or /user_files/1.json
  def update
    respond_to do |format|
      if @user_file.update(user_file_params)
        format.html { redirect_to @user_file, notice: "User file was successfully updated." }
        format.json { render :show, status: :ok, location: @user_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_files/1 or /user_files/1.json
  def destroy
    @user_file.destroy
    respond_to do |format|
      format.html { redirect_to user_files_url, notice: "User file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def user_file_params
    params.require(:user_file).permit(:uuid, :data, :user_id)
  end
end
