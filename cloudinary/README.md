To return images from Cloudinary to the Chatbot

Create a Cloudinary account here: https://cloudinary.com/users/register/free
- Add few images either using auto-tagging or manually tag the images.
  More on uploading and tagging images here: https://cloudinary.com/documentation/image_upload_api_reference#tags_method
- Now create a Cloud function which accepts tag, transformation as parameter out of this tag will be the mandatory param.
- Call the list by tag json or use the Cloudinary SDK search API to search for resources based on tags/keywords.
  More on Search API here: https://cloudinary.com/documentation/search_api
- Retrieve the URL and return as a response to the chatbot.
