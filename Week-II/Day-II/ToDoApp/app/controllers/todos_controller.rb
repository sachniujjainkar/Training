class TodosController < ApplicationController

  before_action :authorize
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  # GET /todos
  # GET /todos.json
  def index
    @user = current_user
    @todos = @user.todos.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @user = current_user
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit

  end

  # POST /todos
  # POST /todos.json

  def create
    @user = current_user
    @todo =@user.todos.create(todo_params)



      if @todo.save
      #if @todo
        flash[:success] = 'Todo was successfully created.'

        redirect_to user_todo_path(@user, @todo)
          #format.html { redirect_to @todo }
        #format.json { render :show, status: :created, location: @todo }
      else
        flash[:danger] = 'There was a problem creating the Todo.'
        format.html { render :new }
        #format.json { render json: @todo.errors, status: :unprocessable_entity }
      end

  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
  #  respond_to do |format|
      if @todo.update(todo_params)
        flash[:success] = 'Todo was successfully updated.'

          redirect_to user_todo_path(@user, @todo)
          #format.html { redirect_to @todo }
        #format.json { render :show, status: :ok, location: @todo }
      else
        flash[:danger] = 'There was a problem updating the Todo.'
      format.html { render :edit }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
  #  end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo.destroy
  #  respond_to do |format|
      flash[:success] = 'Todo was successfully destroyed.'
      redirect_to user_todos_path(@user)
      #  redirect_to "todos#index"
      #format.html { redirect_to todos_url }
      #format.json { head :no_content }
    end
#  end
  def login
    @todo = Todo.new
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @user = User.find(params[:user_id])
      @todo = @user.todos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:title, :notes)
    end
end
