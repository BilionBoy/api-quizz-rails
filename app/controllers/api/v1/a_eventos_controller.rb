module Api
  module V1
    class AEventosController < ApplicationController
      before_action :set_a_evento, only: %i[show update destroy]

      def index
        @a_eventos = ::AEvento.all
        render json: @a_eventos, each_serializer: AEventoSerializer
      end

      def show
        render json: { data: @a_evento }
      end

      def create
        @a_evento = ::AEvento.new(a_evento_params)
        if @a_evento.save
          render json: { data: @a_evento }, status: :created
        else
          render json: { errors: @a_evento.errors }, status: :unprocessable_entity
        end
      end

      def update
        if @a_evento.update(a_evento_params)
          render json: { data: @a_evento }
        else
          render json: { errors: @a_evento.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @a_evento.destroy!
        head :no_content
      end

      private

      def set_a_evento
        @a_evento = ::AEvento.find(params[:id])
      end

      def a_evento_params
       params.require(:a_evento).permit(:quantidade_dias, :quantidade_pessoas, :a_grupo_id)
      end
    end
  end
end
