package ${kotlinEscapedPackageName}

import androidx.fragment.app.FragmentActivity
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
import com.qingmei2.rhine.base.viewmodel.BaseViewModel

@SuppressWarnings("checkResult")
class ${viewModelClass}(
        private val repo: ${dataSourceRepositoryName}
) : BaseViewModel() {

	companion object {

        fun instance(
            activity: FragmentActivity,
            repo: ${dataSourceRepositoryName}
        ) =
            ViewModelProviders
                .of(activity, ${viewModelClass}Factory(repo))
                .get(${viewModelClass}::class.java)

    }
}

@Suppress("UNCHECKED_CAST")
class ${viewModelClass}Factory(
    private val repo: ${dataSourceRepositoryName}
) : ViewModelProvider.Factory {

    override fun <T : ViewModel?> create(modelClass: Class<T>): T =
        ${viewModelClass}(repo) as T
}