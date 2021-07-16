package com.reactnativezoom.ui.view_manager

import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.reactnativezoom.ui.view.RandomNumberGeneratorView

class RandomNumberGeneratorViewManager : SimpleViewManager<RandomNumberGeneratorView>() {

  override fun getName() = "RandomNumberGeneratorView"

  override fun createViewInstance(reactContext: ThemedReactContext): RandomNumberGeneratorView {
    return RandomNumberGeneratorView(reactContext);
  }
}
