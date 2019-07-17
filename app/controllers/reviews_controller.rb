class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    #@review.user = current_user
    puts current_user.first_name
    puts params[:product_id]
    puts params[:review][:description]   
    #puts "ProductID: #{@product.id}"
    #raise "Yay, I'm here!"

    review = Review.new({
      product_id: params[:product_id],
      user_id: current_user.id,
      description: params[:review][:description],
      rating: params[:review][:rating]
    })
    review.save!

    if review.save
      redirect_to "/products/#{params[:product_id]}"
    else
      redirect_to "/products/#{params[:product_id]}"
    end

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to "/products/#{params[:product_id]}"
  end

  private

  def review_params
      params.require(:review).permit(:rating, :description, :product_id)
  end


end
