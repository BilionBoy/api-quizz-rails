module Api
  module V1
    class ACategoriasController < ApplicationController
      before_action :set_a_categoria, only: %i[ show update destroy ]

      # GET /api/v1/a_categorias
      def index
         @a_categorias = ACategoria.all
        render json: { data: @a_categorias }
      end

      # GET /api/v1/a_categorias/1
      def show
        render json: @a_categoria
      end

      # POST /api/v1/a_categorias
      def create
        @a_categoria = ACategoria.new(a_categoria_params)

        if @a_categoria.save
          render json: @a_categoria, status: :created
        else
          render json: @a_categoria.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/a_categorias/1
      def update
        if @a_categoria.update(a_categoria_params)
          render json: @a_categoria
        else
          render json: @a_categoria.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/a_categorias/1
      def destroy
        @a_categoria.destroy!
      end

      private

      def set_a_categoria
        @a_categoria = ACategoria.find(params[:id])
      end

      def a_categoria_params
        params.require(:a_categoria).permit(:descricao)
      end
    end
  end
end
