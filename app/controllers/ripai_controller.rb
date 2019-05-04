class RipaiController < ApplicationController
  def before

  end

  def after
    # @pais = params.require(:ripai).permit(:sorted_pais)
    @pais = params.require(:ripai)[:sorted_pais]
  end
end
