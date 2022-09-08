class MissionsController < ApplicationController
   
   # POST /missions
    def create
        mission = Mission.create!(mission_params)
        render json: mission.planet, status: :created
        # returns planet as per readme
    end

    private

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end
end