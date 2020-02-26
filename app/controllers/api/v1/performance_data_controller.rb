class Api::V1::PerformanceDataController < ApplicationController
    def create
      data = PerformanceData.new(Performance_data_params)

      if data.save
        head :ok
      else
        render json: { error: data.errors.full_message }
      end
    end

    private

    def performance_data_params
        params.require(:performance_data).permit!
    end
end