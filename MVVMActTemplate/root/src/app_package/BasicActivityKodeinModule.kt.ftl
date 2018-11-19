package ${kotlinEscapedPackageName}

import android.support.v7.app.AppCompatActivity
import org.kodein.di.Kodein
import org.kodein.di.android.support.AndroidLifecycleScope
import org.kodein.di.generic.*

private const val ${extractLetters(objectKind?upper_case)}_MODULE_TAG = "${extractLetters(objectKind?upper_case)}_MODULE_TAG"

val ${kodeinModuleName} = Kodein.Module(${extractLetters(objectKind?upper_case)}_MODULE_TAG) {

<#if generateNavigator>
    bind<${navigatorClass}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${navigatorClass}(context)
    }
</#if>
    bind<${viewModelClass}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${viewModelClass}.instance(context, instance())
    }

    bind<${viewDelegateClass}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${viewDelegateClass}(
            instance()<#if generateNavigator>,
            instance()</#if>
        )
    }

	bind<${dataSourceRepositoryName}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${dataSourceRepositoryName}(instance(), instance())
    }

    bind<${localDataSourceName}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${localDataSourceName}()
    }

    bind<${remoteDataSourceName}>() with scoped(AndroidLifecycleScope<AppCompatActivity>()).singleton {
        ${remoteDataSourceName}()
    }
}