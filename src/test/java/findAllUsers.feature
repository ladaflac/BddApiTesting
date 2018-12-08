Feature:
  Get all users

Background:
  * url 'http://zero.webappsecurity.com/web-services/infoService'

  
Scenario: Find all users
  Given request read('./requests/findAllUsers_request.xml')
  When soap action 'http://www.hp.com/webinspect/zerows/findAllUsers'
  Then status 200
  And print 'response: ', response
