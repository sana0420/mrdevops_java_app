
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-04e199c7d36a92b1d","subnet-0af90a25421c31939","subnet-09fe944947a5c2dfd","subnet-0e1b25eed95119314"]
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
        node_subnet_ids          = ["subnet-04e199c7d36a92b1d","subnet-0af90a25421c31939","subnet-09fe944947a5c2dfd","subnet-0e1b25eed95119314"]

        tags = {
             "Name" =  "node1"
         } 
  }
}
