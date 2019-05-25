class RipaiController < ApplicationController
  def before
    @ps = PaisService.new
  end

  def after
    # @pais = params.require(:ripai).permit(:sorted_pais)
    @ps = PaisService.new
    @pais = params.require(:ripai)[:selected_pais]
  end
end
