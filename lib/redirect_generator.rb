require 'erb'

class RedirectGenerator
  def self.generate(redirects, items)
    redirect_template = ERB.new(File.read('dstu2_redirect.html.erb'))

    redirects.each do |pairs|
      from_url = pairs[0].to_s
      to_url = pairs[1]

      redirect = {:url => to_url}
      items.create(redirect_template.result(binding),
                    {:redirect => true, :redirect_to => to_url, :title => 'Redirecting', :layout => 'overview'},
                    from_url)
    end
  end
end
