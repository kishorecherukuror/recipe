module ApplicationHelper


def show_params

html =" <div style=\"border:1px red solid;margin:10px;padding:10px\">"
params.each do |key ,value| 
 html +=" #{key}:  #{value}<br/> " if key != 'authenticity_token' && key != 'utf8' && key != 'commit' && key != 'controller' && key != 'action'
 end
#flash[:notice] = "Hi this is kishore"

html +="</div>"

return html.html_safe
end
def things_to_do( links )
html = "<ul>"
	links.each do |url,body|
	html += "<li>"+link_to(body , url) +"</li>"
	

end
html +="</ul>"
return html.html_safe	
end


				

def calendar(month,year)
cal_str = "Year=#{ @year }"
prev_month = link_to "previous" , calendar_path(:month => month - 1,  :year => 2013)
	cal_str +="<table border=\"1\">"
	cal_str +="<tr>"
	cal_str +="<tr><td>#{prev_month}</td><td colspan=6>October</td></tr>"
	cal_str +="<td>&nbsp;</td>"
	
	 6.times do | day | 
	
	cal_str +="<td>#{day+1}</td>"
	 end 
	cal_str +="</tr>  "
	cal_str +="</table>"
return cal_str.html_safe
end
end

def time_set
  Time.now.strftime("%C %B %Y")
end

