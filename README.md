# ukv-deployment-testing

## compilation
build the test image using make image-build & make image-push

## run on an OpenShift cluster

oc new-project ukv-test
### create a deployment and a service of Unum UKV
oc apply -f .
### run a test pod with the client to try connect to the db
oc run dbtest --image=quay.io/itroyano/test-ukv-db:0.0.1