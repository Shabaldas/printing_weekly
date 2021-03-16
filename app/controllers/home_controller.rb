class HomeController < ApplicationController
  def home
    # @pictures = []
    # ap '<<<<<'
    # ap bla

    # ap '<<<<<'

    # ap bla['graphql']['user']['edge_owner_to_timeline_media']['edges']
    # bla['graphql']['user']['edge_owner_to_timeline_media']['edges'].each do |x|
    #   @pictures << x['node']['display_url']
    # end
    # ap @pictures

    set_meta_tags title: @article&.name,
                  site: 'PrintingWeekly',
                  description: @article&.summary,
                  keyword: [
                    '3dprinting', 'printingweekly', '3d', '3dprint', '3Dprinting', 'ivanofrankivsk', '3Ддрук', '3дпечать', '3д', 'іванофранківськ'
                  ]
  end

  private

  # def bla
  #   # JSON.parse(RestClient.get("#{auth_url}")&.body)
  #   # response = (HTTParty.post('https://www.instagram.com/printingweekly/?__a=1'))
  #   response = (Net::HTTP.get_response(URI.parse('https://www.instagram.com/printingweekly/?__a=1')))
  #   response
  # end

  # def auth_url
  #   "https://www.instagram.com/printingweekly/?__a=1"
  #   # token
    
  #   # IGQVJWRnFfVjZATVGhZAOXJlVmw0YTU3Ym5ldU9WUXBwSWl2cUd0ajF5R2VZAeG1MLTR3RHV2NkRWQ2RQTm9wek1LYTNqaGE5QV9UTUE5ZAUZAzQ1pSUUdHRGd3OU9GNjhKeVo2bXprMldiTk9uWTVrd3pRcgZDZD
  #   # IGQVJWdWFyYTVMOHY1emNQZAEJnS2NZAS3FzRFlHdDJpNC12MXVOQng1dmVYTVA1em5ZAbUpIMWVKX3J1c1k1RVZAGZAkxDOGNVbTBWb2V2V09DZAW1jQ1hzTjZAXNHFNOGlWRFlPVDZAEZAnJXNUdYbTlZANFFiZAgZDZD
  # end
end
