class FixesController < ApplicationController
  before_action :set_user, except: [:index]

  def index
    @fixes = Fix.all
  end

  def new
    @fix = Fix.new
    @fix.number = 'ADM'.concat(new_fix_number)
  end

  def create
    @fix = @user.fixes.new(fix_params)
    @fix.number = 'ADM'.concat(new_fix_number)
    @fix.level = Level.find(1)
    @fix.save
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def new_fix_number
    (Fix.last.number.delete('^0-9').to_i + 1).to_s
  end

  def fix_params
    params.require(:fix).permit(:description)
  end
end
