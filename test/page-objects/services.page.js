import { $ } from '@wdio/globals'

import { Page } from 'page-objects/page'

class ServicePage extends Page {
  get title() {
    return $('[data-testid="app-header-title"]')
  }

  get loginLink() {
    return $('[data-testid="app-login-link"]')
  }

  open() {
    return super.open('/services')
  }
}

export default new ServicePage()
