require "connectQtest/version"
require "rest-client"
require "oauth"
require "json"

class Qtest
  # Your code goes here...
  $projectid = 0 #your project Id
 
	def QtestPostTestResult (name,runid,failMessage) 

	    startdate = DateTime.now 
	    enddate = DateTime.now 

	    puts "Uploading ..... Testcase"
	    puts name
	    $id = runid
	    puts $id

	    response = RestClient::Request.execute(
	      method: :post, 
	      url: "https://mobiquity.qtestnet.com/api/v3/projects/#$projectid/test-runs/#$id/auto-test-logs",
	      payload:{                 
	          "name" => name,   
	          "automation_content" => "sample-demo-api-AutomationTestLog",   
	          "status" => failMessage  ? "PASS" : "FAIL",
	          "exe_start_date" => startdate,    
	          "exe_end_date" => enddate,  
	          "note" => failMessage ? "Testcase is passed" : "Testcase is failed"
	        }.to_json,

	          headers:{
	            "Content-Type"=> "application/json",
	            "Cache-Control" => "no-cache",
	            "verify_ssl" => "OpenSSL::SSL::VERIFY_NONE",
	            "Authorization" => "bW9iaXF1aXR5fGFwYXRlbEBtb2JpcXVpdHlpbmMuY29tOjE0NzkyNzUyNjU4OTc6ZGQ3YTMyOWVhMTA0NzhjMzU2NzFmNmNiNjM4YTI4ZDI"
	        }
	    )

	    puts "response code :"
	    puts response.code
	    puts response.body

	    if response.code == 201
	        puts $status = "PASS"
	        puts "Testcase is passed"
	    else
	        puts $status = "FAIL"
	        puts "Testcase is failed"
	    end
	    puts "status of the charter is...: " + $status
	 
	  end
end
