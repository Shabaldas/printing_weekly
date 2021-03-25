class HomeController < ApplicationController
  def home
    @instaphotos = Instaphoto.last(12)
    set_meta_tags title: @article&.name,
                  site: 'PrintingWeekly',
                  description: @article&.summary,
                  keyword: [
                    '3dprinting', 'printingweekly', '3d', '3dprint', '3Dprinting', 'ivanofrankivsk', '3Ддрук', '3дпечать', '3д', 'іванофранківськ'
                  ]
  end
end
