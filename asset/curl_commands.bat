## test images
export watson_visual_directory="/Users/ulidder/Desktop/galvanize-07.24.18/gsk-hackathon-images/test"

## visual model ID 
export watson_visual_key="7VkHQCHWvkjpNZKCBaGUPDQeWfPwZ57CNQQoqg1pJqCq"

## Classify an image using URL

https://github.com/lidderupk/watson-visual-galvanize-08.25.18/blob/master/assets/sf-cable-car.jpg

curl -u "apikey:$watson_visual_key" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?url=https://github.com/lidderupk/watson-visual-galvanize-08.25.18/blob/master/assets/sf-cable-car.jpg?raw=true&version=2018-03-19"


## Single local image
curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@$watson_visual_directory_root/assets/sample-images/kids.jpeg" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?version=2018-03-19"

## Multiple local images - zip file
curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@$watson_visual_directory_root/assets/sample-images/multiple_images.zip" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?version=2018-03-19"


## Face model
curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@$watson_visual_directory_root/assets/sample-images/kids.jpeg" -F "threshold=0.6" "https://gateway.watsonplatform.net/visual-recognition/api/v3/detect_faces?version=2018-03-19"


## Food model
curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@$watson_visual_directory_root/assets/sample-images/fruitbowl.jpeg" -F "classifier_ids=food" -F "threshold=0.6" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?version=2018-03-19"


## Custom models
## Get all classifiers
curl -u "apikey:$watson_visual_key" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classifiers?verbose=true&version=2018-03-19"


## Use the default model
curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@$watson_visual_directory_root/assets/sample-images/mucinex-1.JPG" -F "threshold=0.6" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?version=2018-03-19"

## Use both default and the custom models
curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@$watson_visual_directory_root/assets/sample-images/mucinex-1.JPG" -F "classifier_ids=medicinexcustomxupkar_1628839369" -F "threshold=0" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?version=2018-03-19"







## DONE


curl -u "apikey:$watson_visual_key" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?url=https://github.com/lidderupk/watson-visual-galvanize-08.25.18/blob/master/assets/sf-cable-car.jpg?raw=true&version=2018-03-19"

/Users/ulidder/Documents/screenshots/test-upkar.jpg


curl -X POST -u "apikey:$watson_visual_key" -F "images_file=@/Users/ulidder/Documents/screenshots/test-upkar.jpg" "https://gateway.watsonplatform.net/visual-recognition/api/v3/classify?version=2018-03-19"

