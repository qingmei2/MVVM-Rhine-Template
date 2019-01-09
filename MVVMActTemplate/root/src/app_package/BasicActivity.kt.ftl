package ${kotlinEscapedPackageName}

import androidx.fragment.app.FragmentActivity
import android.content.Intent
import org.kodein.di.Kodein
import org.kodein.di.generic.instance
import org.kodein.di.android.retainedKodein
<#if applicationPackage??>
import ${applicationPackage}.R
import com.qingmei2.rhine.base.view.activity.BaseActivity
import ${applicationPackage}.databinding.${activityBindingClass}
</#if>

class ${className} : BaseActivity<${activityBindingClass}>() {

    override val kodein: Kodein by retainedKodein {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    val viewModel: ${viewModelClass} by instance()

    override val layoutId: Int = R.layout.${activity_layout}

    companion object {

        fun launch(activity: FragmentActivity) =
                activity.apply {
                    startActivity(Intent(this, ${className}::class.java))
                }
    }
}
