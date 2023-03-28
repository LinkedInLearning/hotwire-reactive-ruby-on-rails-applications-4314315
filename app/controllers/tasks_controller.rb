class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks
  def index
    @todo_tasks = Task.todo
    @done_tasks = Task.done
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.turbo_stream
        format.html { redirect_to @task, notice: "Task was successfully created." }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("#{helpers.dom_id(@task)}_form", partial: 'form', locals: { task: @task }) }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.turbo_stream
        format.html { redirect_to @task, notice: "Task was successfully updated." }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("#{helpers.dom_id(@task)}_form", partial: 'form', locals: { task: @task }) }
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove("#{helpers.dom_id(@task)}_li") }
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:name, :status)
    end
end
