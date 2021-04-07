% MiniZinc Model for: MinistoreModel

bool Containers.Included = True
bool CloudAzure.Included = True
bool DataAccesssOracle.Included = True

var bool: Instances.Included;
var bool: CloudAws.Included;
var bool: DataAccesssMssql.Included;

constraint Containers.Included != Instances.Included
constraint CloudAzure.Included != CloudAws.Included
constraint DataAccesssOracle.Included != DataAccesssMssql.Included

solve satisfy;

output ["wa=\(wa)\t nt=\(nt)\t sa=\(sa)\n",
        "q=\(q)\t nsw=\(nsw)\t v=\(v)\n",
         "t=", show(t),  "\n"];

output ["Instances=\(Instances)\t Containers=\(Containers)\t CloudAzure=\(CloudAzure)\t CloudAws=\(CloudAws)\t DataAccesssOracle=\(DataAccesssOracle)\t DataAccesssMssql=\(DataAccesssMssql)\t "];