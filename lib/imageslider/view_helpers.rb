module Imageslider
  module ViewHelpers
    def image_slider(img_urls)

      html = "
        <div class=\"slider\">
      "
      img_urls.each_with_index do |img_url, index|

        checked = 'checked="checked"' if index == 0

        html += "
          <input type=\"radio\" name=\"slide_switch\" id=\"id#{index}\" #{checked}/>
          <label for=\"id#{index}\">
            <img src=\"#{img_url}\" width=\"100\"/>
          </label>
          <img src=\"#{img_url}\"/>
        "
      end

      html += "
        </div>
      "



      html.html_safe



    end
  end
end
