package ${kotlinEscapedPackageName}

import androidx.appcompat.app.AppCompatActivity
import org.kodein.di.Kodein
import org.kodein.di.android.x.AndroidLifecycleScope
import org.kodein.di.generic.*

private const val ${extractLetters(objectKind?upper_case)}_MODULE_TAG = "${extractLetters(objectKind?upper_case)}_MODULE_TAG"

val ${kodeinModuleName} = Kodein.Module(${extractLetters(objectKind?upper_case)}_MODULE_TAG) {

    bind<${viewModelClass}>() with scoped<AppCompatActivity>(AndroidLifecycleScope).singleton {
        ${viewModelClass}.instance(context, instance())
    }

	bind<${dataSourceRepositoryName}>() with scoped<AppCompatActivity>(AndroidLifecycleScope).singleton {
        ${dataSourceRepositoryName}(instance(), instance())
    }

    bind<${localDataSourceName}>() with scoped<AppCompatActivity>(AndroidLifecycleScope).singleton {
        ${localDataSourceName}()
    }

    bind<${remoteDataSourceName}>() with scoped<AppCompatActivity>(AndroidLifecycleScope).singleton {
        ${remoteDataSourceName}()
    }
}