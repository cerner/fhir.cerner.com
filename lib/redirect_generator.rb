# frozen_string_literal: true

require 'erb'

class RedirectGenerator
  def self.generate(redirects, items)
    dstu2_redirect_template = ERB.new(File.read('dstu2_redirect.html.erb'))
    r4_redirect_template = ERB.new(File.read('r4_redirect.html.erb'))

    redirects.each do |redirect_item|
      from_url = redirect_item[0].to_s
      to_url = redirect_item[1][:url]
      deprecated = redirect_item[1][:deprecated]

      redirect = {url: to_url, deprecated: deprecated}

      items.create(
        from_url.include?('/r4/') ? r4_redirect_template.result(binding) : dstu2_redirect_template.result(binding),
        {redirect: true, redirect_to: to_url, title: 'Redirecting', layout: 'overview'},
        from_url
      )
    end
  end
end
