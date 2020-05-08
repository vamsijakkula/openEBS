#Create a Kubernetes Cluster on GKE & Fetch the cluster credentials
gcloud container clusters get-credentials kube

#install OpenEBS

kubectl apply -f https://openebs.github.io/charts/openebs-operator.yaml

#Verify the installation & we should see all pods up and running in openebs NS

# Observe localhost provisioner pod

kubectl get pods -n openebs -l openebs.io/component-name=openebs-localpv-provisioner

# Check the storage Class

kubectl get sc

# Create a PVC 


# Create an Nginx Pod which consumes OpenEBS Local PV Hospath Storage


