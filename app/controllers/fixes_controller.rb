class FixesController < ApplicationController

  def index
    @fixes = Fix.all
  end

  def new
    @fix = Fix.new
    @fix.number = 'ADM'.concat(new_fix_number)
  end

  def create
    @fix = Fix.new(fix_params)
    @fix.number = 'ADM'.concat(new_fix_number)
    @fix.save
    redirect_to fixes_path
  end

  private

  def new_fix_number
    (Fix.last.number.delete('^0-9').to_i + 1).to_s
  end

  def fix_params
    params.require(:fix).permit(:description)
  end
end
