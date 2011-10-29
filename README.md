simple sinatra app for processing a contact form. 

just takes a post from a form like the one accessed by /demo/ and 
validates the data, sends off the email when the form data is valid
and returns an error when it is not.

returns JSON and error codes:
 * success: 
 * failure: s

initially written to be deployed to heroku.