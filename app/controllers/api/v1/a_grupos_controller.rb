module Api
  module V1
    class AGruposController < ApplicationController
      before_action :set_a_grupo, only: %i[show update destroy]

      def index
        @a_grupos = ::AGrupo.all
        render json: { data: @a_grupos }
      end

      def show
        render json: { data: @a_grupo }
      end

      def create
        @a_grupo = ::AGrupo.new(a_grupo_params)
        if @a_grupo.save
          render json: { data: @a_grupo }, status: :created
        else
          render json: { errors: @a_grupo.errors }, status: :unprocessable_entity
        end
      end

      def update
        if @a_grupo.update(a_grupo_params)
          render json: { data: @a_grupo }
        else
          render json: { errors: @a_grupo.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @a_grupo.destroy!
        head :no_content
      end

      private

      def set_a_grupo
        @a_grupo = ::AGrupo.find(params[:id])
      end

      def a_grupo_params
        params.require(:a_grupo).permit(:descricao, :a_segmento_id)
      end
    end
  end
end
