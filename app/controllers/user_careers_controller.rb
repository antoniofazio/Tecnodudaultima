class UserCareersController < ApplicationController
  # GET /user_careers
  # GET /user_careers.json
  def index
    @user_careers = UserCareer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_careers }
    end
  end

  # GET /user_careers/1
  # GET /user_careers/1.json
  def show
    @user_career = UserCareer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_career }
    end
  end

  # GET /user_careers/new
  # GET /user_careers/new.json
  def new
    @user_career = UserCareer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_career }
    end
  end

  # GET /user_careers/1/edit
  def edit
    @user_career = UserCareer.find(params[:id])
  end

  # POST /user_careers
  # POST /user_careers.json
  def create
    @user_career = UserCareer.new(params[:user_career])

    respond_to do |format|
      if @user_career.save
        format.html { redirect_to @user_career, notice: 'User career was successfully created.' }
        format.json { render json: @user_career, status: :created, location: @user_career }
      else
        format.html { render action: "new" }
        format.json { render json: @user_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_careers/1
  # PUT /user_careers/1.json
  def update
    @user_career = UserCareer.find(params[:id])

    respond_to do |format|
      if @user_career.update_attributes(params[:user_career])
        format.html { redirect_to @user_career, notice: 'User career was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_careers/1
  # DELETE /user_careers/1.json
  def destroy
    @user_career = UserCareer.find(params[:id])
    @user_career.destroy

    respond_to do |format|
      format.html { redirect_to user_careers_url }
      format.json { head :no_content }
    end
  end
end
