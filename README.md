# ustore-deployment-testing (formely ukv)

## Compilation of the python test client image
build the test image using `make image-build` & `make image-push`

## Run a test pod using a UStore deployed by ustore-operator
```
SVCHOST=$(oc get ustore <my ustore resource> -o json | jq '.status.serviceUrl')
oc run dbtest --image=quay.io/itroyano/test-ukv-db:0.0.3 --env SERVER_URL="$SVCHOST"
```

## Run a basic instance on an OpenShift cluster (depracated. use instead https://github.com/opdev/ustore-operator )
```oc new-project ukv-test```
### create a deployment and a service of Unum UKV
```oc apply -f .```
### run a test pod with the client to try connect to the db
```oc run dbtest --image=quay.io/itroyano/test-ukv-db:0.0.3 --env SERVER_URL="ukv.ukv-test.svc.cluster.local:38709"```