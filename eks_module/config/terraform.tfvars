
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0112fe30d48338d79","subnet-0eaa363700bd73b43","subnet-05ae93017e8f11093","subnet-0d7547187ee052784"]
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
        node_subnet_ids          = ["subnet-0112fe30d48338d79","subnet-0eaa363700bd73b43","subnet-05ae93017e8f11093","subnet-0d7547187ee052784"]

        tags = {
             "Name" =  "node1"
         } 
  }
}
