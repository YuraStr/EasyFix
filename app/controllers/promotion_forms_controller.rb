class PromotionFormsController < ApplicationController
  before_action :set_user_and_fix

  def new
    @form = PromotionForm.new
  end

  def create
    @form = @fix.promotion_forms.create(promform_params)
    @form.level = @fix.level
    if @form.save
      respond_to do |format|
        format.js
      end
    end

    # respond_to do |format|
    #   if @form.save
    #     format.html { redirect_to @form, notice: 'Form was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @form }
    #     # added:
    #     format.js   { render action: 'show', status: :created, location: @form }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @form.errors, status: :unprocessable_entity }
    #     # added:
    #     format.js   { render json: @form.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_user_and_fix
    @user = User.find(params[:user_id])
    @fix  = Fix.find(params[:fix_id])
  end

  def promform_params
    params.require(:promotion_form).permit(:name, :description)
  end
end
