package ${kotlinEscapedPackageName}

import android.support.v4.app.Fragment
import org.kodein.di.Kodein
import org.kodein.di.android.support.AndroidLifecycleScope
import org.kodein.di.generic.*

private const val ${extractLetters(objectKind?upper_case)}_MODULE_TAG = "${extractLetters(objectKind?upper_case)}_MODULE_TAG"

val ${kodeinModuleName} = Kodein.Module(${extractLetters(objectKind?upper_case)}_MODULE_TAG) {

<#if generateNavigator>
    bind<${navigatorClass}>() with scoped(AndroidLifecycleScope<Fragment>()).singleton {
        ${navigatorClass}(context)
    }

</#if>
    bind<${viewDelegateClass}>() with scoped(AndroidLifecycleScope<Fragment>()).singleton {
        ${viewDelegateClass}(
            instance()<#if generateNavigator>,
            instance()</#if>
        )
    }

    bind<${viewModelClass}>() with scoped(AndroidLifecycleScope<Fragment>()).singleton {
        ${viewModelClass}.instance(context, instance())
    }

    bind<${dataSourceRepositoryName}>() with scoped(AndroidLifecycleScope<Fragment>()).singleton {
        ${dataSourceRepositoryName}(instance(), instance())
    }

    bind<${localDataSourceName}>() with scoped(AndroidLifecycleScope<Fragment>()).singleton {
        ${localDataSourceName}()
    }

    bind<${remoteDataSourceName}>() with scoped(AndroidLifecycleScope<Fragment>()).singleton {
        ${remoteDataSourceName}()
    }
}