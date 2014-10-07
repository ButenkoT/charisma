class CommentsController < ApplicationController
    def index
    end

    def show
        @comment = Comment.find params[:id]
    end

    def new
        @comment = Comment.new
    end

    def create
        product.comments.create(comment_params) do |comment|
            comment.user_id = @current_user.id
        end
        redirect_to product_path(@product)

        # respond_to do |format|
        #     if @comment.save
        #         format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        #         format.json { render action: 'show', status: :created, location: @comment }
        #     else
        #         format.html { render action: 'new' }
        #         format.json { render json: @comment.errors, status: :unprocessable_entity }
        #     end
        # end
    end

    def upvote
        @product = Product.find(params[:product_id])
        @comment = @product.comments.find(params[:id])
        @comment.liked_by @current_user

        redirect_to @product
    
    end


    def edit
        @comment = Comment.find params[:id]
    end

    def update
        comment = Comment.find params[:id]
        comment.update comment_params
        redirect_to product_path(@product)
    end

    def destroy
        comment = Comment.find params[:id]
        comment.destroy
        redirect_to product_path(@product)
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :body, :product_id)
    end

    def product
        @product = Product.find(params[:product_id])
    end
end