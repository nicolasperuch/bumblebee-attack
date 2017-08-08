child_process = require('child_process')

module.exports = (robot) ->
  robot.respond /gcp instance/i, (msg) ->
    child_process.exec 'gcloud compute --project "peppy-webbing-175818" instances create "instance-test" --zone "us-central1-c" --machine-type "f1-micro" --subnet "default" --maintenance-policy "MIGRATE" --service-account "950837503149-compute@developer.gserviceaccount.com" --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring.write","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --tags "http-server" --image "ubuntu-1404-trusty-v20170803" --image-project "ubuntu-os-cloud" --boot-disk-size "10" --boot-disk-type "pd-standard" --boot-disk-device-name "instance-test"', (error, stdout, stderr) ->
      msg.send("CGP instance up")
