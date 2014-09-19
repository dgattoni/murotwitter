class WelcomeController < ApplicationController
	def index
		

  	   	# el tutorial paso a paso en: http://danielagattoni.quiltyweb.com/twitter-api-ruby-tutorial/
  	   	#si tienes problemas en localhost revisa: danielagattoni.quiltyweb.com/webdeveloper/sslerror-certificate-verify-failed-en-localhost/

  	   	# @search = $client.search("#hack4good -rt", :lang => "es").take(3).collect 
  	   	# @search = $client.search("#hack4good", :lang => "es").take(3).collect 
  	   	# 

  	   	# ejemplo 2:
  	   	# username = 'tu-usuario-de-twitter'
   		# options = {:count => 3, :include_rts => true}
   		# @search  = $client.user_timeline(username, options)


   		#ejemplo 3:
   		 #topics = ["hack4good","hack4goodsantiago"]
		 # @search = $client.search(topics.join(","), :include_rts => false).take(3).collect


		 #ejemplo 4:
		 @search = $client.search("reciclaje -rt",:result_type=>'recent',:geocode=>"-33.4691199,-70.641997,100km").take(18).collect

		end
	end
