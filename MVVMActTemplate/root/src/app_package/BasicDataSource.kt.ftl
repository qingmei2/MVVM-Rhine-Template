package ${kotlinEscapedPackageName}

import com.qingmei2.rhine.base.repository.BaseRepositoryBoth
import com.qingmei2.rhine.base.repository.ILocalDataSource
import com.qingmei2.rhine.base.repository.IRemoteDataSource

interface ${remoteDataSourceInterfaceName} : IRemoteDataSource

interface ${localDataSourceInterfaceName} : ILocalDataSource

class ${dataSourceRepositoryName}(
    remoteDataSource: ${remoteDataSourceInterfaceName},
    localDataSource: ${localDataSourceInterfaceName}
) : BaseRepositoryBoth<${remoteDataSourceInterfaceName}, ${localDataSourceInterfaceName}>(remoteDataSource, localDataSource)

class ${remoteDataSourceName} : ${remoteDataSourceInterfaceName}

class ${localDataSourceName} : ${localDataSourceInterfaceName}