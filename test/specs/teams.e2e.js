import { browser, expect } from '@wdio/globals'

import TeamsPage from 'page-objects/teams.page'

describe('Teams page', () => {
  it('Should be on the "Teams" page', async () => {
    await TeamsPage.open()
    await expect(browser).toHaveTitle('Teams | Core Delivery Platform - Portal')
    await expect(TeamsPage.pageHeading).toHaveText('Teams')
    await browser.deleteCookies()
  })
})
