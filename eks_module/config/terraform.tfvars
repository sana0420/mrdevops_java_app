
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-05ae93017e8f11093","subnet-01679f5ecc11319af","subnet-0d7547187ee052784","subnet-0eaa363700bd73b43"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-05ae93017e8f11093","subnet-01679f5ecc11319af","subnet-0d7547187ee052784","subnet-0eaa363700bd73b43"]

        tags = {
             "Name" =  "node1"
         } 
  }
}
