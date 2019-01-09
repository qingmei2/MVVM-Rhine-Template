package ${kotlinEscapedPackageName}

import androidx.fragment.app.Fragment
import org.kodein.di.Kodein
import org.kodein.di.android.x.AndroidLifecycleScope
import org.kodein.di.generic.*

private const val ${extractLetters(objectKind?upper_case)}_MODULE_TAG = "${extractLetters(objectKind?upper_case)}_MODULE_TAG"

val ${kodeinModuleName} = Kodein.Module(${extractLetters(objectKind?upper_case)}_MODULE_TAG) {

    bind<${viewModelClass}>() with scoped<Fragment>(AndroidLifecycleScope).singleton {
        ${viewModelClass}.instance(context, instance())
    }

    bind<${dataSourceRepositoryName}>() with scoped<Fragment>(AndroidLifecycleScope).singleton {
        ${dataSourceRepositoryName}(instance(), instance())
    }

    bind<${localDataSourceName}>() with scoped<Fragment>(AndroidLifecycleScope).singleton {
        ${localDataSourceName}()
    }

    bind<${remoteDataSourceName}>() with scoped<Fragment>(AndroidLifecycleScope).singleton {
        ${remoteDataSourceName}()
    }
}