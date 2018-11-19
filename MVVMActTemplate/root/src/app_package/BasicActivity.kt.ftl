package ${kotlinEscapedPackageName}

import android.support.v4.app.FragmentActivity
import android.content.Intent
import org.kodein.di.Kodein
import org.kodein.di.generic.instance
import org.kodein.di.android.retainedKodein
<#if applicationPackage??>
import ${applicationPackage}.R
import com.qingmei2.rhine.base.view.BaseActivity
import ${applicationPackage}.databinding.${activityBindingClass}
</#if>

class ${className} : BaseActivity<${activityBindingClass}, ${viewDelegateClass}>() {

    override val kodein: Kodein by retainedKodein {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    override val viewDelegate: ${viewDelegateClass} by instance()

    override val layoutId: Int = R.layout.${activity_layout}

	override fun initView() {
        binding.delegate = viewDelegate
    }

    companion object {

        fun launch(activity: FragmentActivity) =
                activity.apply {
                    startActivity(Intent(this, ${className}::class.java))
                }
    }
}
