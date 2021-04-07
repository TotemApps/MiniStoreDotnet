% MiniZinc Model for: MinistoreModel
par bool: ContainersIncluded = true;
par bool: CloudAzureIncluded = true;
par bool: DataAccesssOracleIncluded = true;

var bool: InstancesIncluded;
var bool: CloudAwsIncluded;
var bool: DataAccesssMssqlIncluded;

constraint ContainersIncluded != InstancesIncluded;
constraint CloudAzureIncluded != CloudAwsIncluded;
constraint DataAccesssOracleIncluded != DataAccesssMssqlIncluded;

solve satisfy;

output ["InstancesIncluded=\(InstancesIncluded)\t ContainersIncluded=\(ContainersIncluded)\t CloudAzureIncluded=\(CloudAzureIncluded)\t CloudAwsIncluded=\(CloudAwsIncluded)\t DataAccesssOracleIncluded=\(DataAccesssOracleIncluded)\t DataAccesssMssqlIncluded=\(DataAccesssMssqlIncluded)\t "];