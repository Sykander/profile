class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]

  # GET /discussions
  # GET /discussions.json
  def index
    @forum = Forum.find(params[:forum_id])
    @discussions = @forum.discussions
  end

  # GET /discussions/1
  # GET /discussions/1.json
  def show
    @forum = Forum.find(params[:forum_id])
    @discussion = @forum.discussions.find(params[:id])
  end

  # GET /discussions/new
  def new
    @forum = Forum.find(params[:forum_id])
    @discussion = @forum.discussions.build
    @discussion.forum_id = @forum.id
    @discussion.user_id = current_user.id
  end

  # GET /discussions/1/edit
  def edit
    @forum = Forum.find(params[:forum_id])
    @discussion = forum.discussions.find(params[:id])
  end

  # POST /discussions
  # POST /discussions.json
  def create
    @forum = Forum.find(params[:forum_id])
    @discussion = @forum.discussions.build
    @discussion.forum_id = @forum.id
    @discussion.user_id = current_user.id

    respond_to do |format|
      if @discussion.save
        format.html { redirect_to @discussion, notice: 'Discussion was successfully created.' }
        format.json { render :show, status: :created, location: @discussion }
      else
        format.html { render :new }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discussions/1
  # PATCH/PUT /discussions/1.json
  def update
    respond_to do |format|
      if @discussion.update(discussion_params)
        format.html { redirect_to @discussion, notice: 'Discussion was successfully updated.' }
        format.json { render :show, status: :ok, location: @discussion }
      else
        format.html { render :edit }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discussions/1
  # DELETE /discussions/1.json
  def destroy
    @discussion.destroy
    respond_to do |format|
      format.html { redirect_to discussions_url, notice: 'Discussion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discussion
      @discussion = Discussion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discussion_params
      params.require(:discussion).permit(:title, :body, :user_id)
    end
end
