## Installing Keptn

* `helm repo add keptn https://charts.keptn.sh`
* check if the repositories has been added using `helm repo search`
* `helm install keptn/keptn keptn -n keptn --create-namespace --set=apiGatewayNginx.type=LoadBalancer --set=continuousDelivery.enabled=true --wait`
* `helm install keptn/jmeter-service keptn -n keptn`
* `helm install keptn/helm-service keptn -n keptn`

After all these steps you keptn control plane should be ready for delivery and testing use-cases.

### Adding resourse 

* `keptn add-resource --project=ms1 --service=webapp --all-stages --resource=webapp.tgz --resourceUri=helm/webapp.tgz`
* `keptn add-resource --project=ms1 --service=webapp --stage=qa --resource=./keptn/endpoints.yaml --resourceUri=helm/endpoints.yaml`
* `keptn add-resource --project=ms1 --service=webapp --stage=qa --resource=./jmeter/load.jmx --resourceUri=jmeter/load.yaml`



### Triggering Delivery for your service

* `keptn trigger delivery --project=ms1 --service=webapp --image="1645370/recipe_blog_api:latest"`

