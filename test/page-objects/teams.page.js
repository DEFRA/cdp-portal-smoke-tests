import { $ } from '@wdio/globals'

import { Page } from 'page-objects/page'

class HomePage extends Page {
  get title() {
    return $('[data-testid="app-header-title"]')
  }

  open() {
    return super.open('/teams')
  }
}

export default new HomePage()
