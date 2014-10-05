class EventDetailsLinkingsController < ApplicationController
  before_action :set_event_users_linking, only: [:show, :edit, :update, :destroy]

  # GET /event_users_linkings
  # GET /event_users_linkings.json
  def index
    @event_users_linkings = EventDetailsLinking.all
  end

  # GET /event_users_linkings/1
  # GET /event_users_linkings/1.json
  def show
  end

  # GET /event_users_linkings/new
  def new
    @event_users_linking = EventDetailsLinking.new
  end

  # GET /event_users_linkings/1/edit
  def edit
  end

  # POST /event_users_linkings
  # POST /event_users_linkings.json
  def create
    @event_users_linking = EventDetailsLinking.new(event_users_linking_params)

    respond_to do |format|
      if @event_users_linking.save
        format.html { redirect_to @event_users_linking, notice: 'Event details linking was successfully created.' }
        format.json { render :show, status: :created, location: @event_users_linking }
      else
        format.html { render :new }
        format.json { render json: @event_users_linking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_users_linkings/1
  # PATCH/PUT /event_users_linkings/1.json
  def update
    respond_to do |format|
      if @event_users_linking.update(event_users_linking_params)
        format.html { redirect_to @event_users_linking, notice: 'Event details linking was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_users_linking }
      else
        format.html { render :edit }
        format.json { render json: @event_users_linking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_users_linkings/1
  # DELETE /event_users_linkings/1.json
  def destroy
    @event_users_linking.destroy
    respond_to do |format|
      format.html { redirect_to event_users_linkings_url, notice: 'Event details linking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_users_linking
      @event_users_linking = EventDetailsLinking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_users_linking_params
      params.require(:event_users_linking).permit(:user_id, :integer, :event_detail_id, :integer)
    end
end
