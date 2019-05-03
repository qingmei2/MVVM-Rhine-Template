package ${kotlinEscapedPackageName}

import com.qingmei2.rhine.base.repository.BaseRepositoryBoth
import com.qingmei2.rhine.base.repository.ILocalDataSource
import com.qingmei2.rhine.base.repository.IRemoteDataSource

class ${dataSourceRepositoryName}(
    remoteDataSource: ${remoteDataSourceName},
    localDataSource: ${localDataSourceName}
) : BaseRepositoryBoth<${remoteDataSourceName}, ${localDataSourceName}>(remoteDataSource, localDataSource)

class ${remoteDataSourceName} : IRemoteDataSource

class ${localDataSourceName} : ILocalDataSource