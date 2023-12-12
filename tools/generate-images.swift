import AppKit
import Cocoa
func initialize() -> [String] {
    var array:[String] = []
    array.append("dialogMuteImage")
    array.append("dialogMuteImageSelected")
    array.append("outgoingMessageImage")
    array.append("readMessageImage")
    array.append("outgoingMessageImageSelected")
    array.append("readMessageImageSelected")
    array.append("sendingImage")
    array.append("sendingImageSelected")
    array.append("secretImage")
    array.append("secretImageSelected")
    array.append("pinnedImage")
    array.append("pinnedImageSelected")
    array.append("verifiedImage")
    array.append("verifiedImageSelected")
    array.append("errorImage")
    array.append("errorImageSelected")
    array.append("chatSearch")
    array.append("chatSearchActive")
    array.append("chatCall")
    array.append("chatCallActive")
    array.append("chatActions")
    array.append("chatFailedCall_incoming")
    array.append("chatFailedCall_outgoing")
    array.append("chatCall_incoming")
    array.append("chatCall_outgoing")
    array.append("chatFailedCallBubble_incoming")
    array.append("chatFailedCallBubble_outgoing")
    array.append("chatCallBubble_incoming")
    array.append("chatCallBubble_outgoing")
    array.append("chatFallbackCall")
    array.append("chatFallbackCallBubble_incoming")
    array.append("chatFallbackCallBubble_outgoing")
    array.append("chatFallbackVideoCall")
    array.append("chatFallbackVideoCallBubble_incoming")
    array.append("chatFallbackVideoCallBubble_outgoing")
    array.append("chatToggleSelected")
    array.append("chatToggleUnselected")
    array.append("chatMusicPlay")
    array.append("chatMusicPlayBubble_incoming")
    array.append("chatMusicPlayBubble_outgoing")
    array.append("chatMusicPause")
    array.append("chatMusicPauseBubble_incoming")
    array.append("chatMusicPauseBubble_outgoing")
    array.append("chatGradientBubble_incoming")
    array.append("chatGradientBubble_outgoing")
    array.append("chatBubble_none_incoming_withInset")
    array.append("chatBubble_none_outgoing_withInset")
    array.append("chatBubbleBorder_none_incoming_withInset")
    array.append("chatBubbleBorder_none_outgoing_withInset")
    array.append("chatBubble_both_incoming_withInset")
    array.append("chatBubble_both_outgoing_withInset")
    array.append("chatBubbleBorder_both_incoming_withInset")
    array.append("chatBubbleBorder_both_outgoing_withInset")
    array.append("composeNewChat")
    array.append("composeNewChatActive")
    array.append("composeNewGroup")
    array.append("composeNewSecretChat")
    array.append("composeNewChannel")
    array.append("contactsNewContact")
    array.append("chatReadMarkInBubble1_incoming")
    array.append("chatReadMarkInBubble2_incoming")
    array.append("chatReadMarkInBubble1_outgoing")
    array.append("chatReadMarkInBubble2_outgoing")
    array.append("chatReadMarkOutBubble1")
    array.append("chatReadMarkOutBubble2")
    array.append("chatReadMarkOverlayBubble1")
    array.append("chatReadMarkOverlayBubble2")
    array.append("sentFailed")
    array.append("chatChannelViewsInBubble_incoming")
    array.append("chatChannelViewsInBubble_outgoing")
    array.append("chatChannelViewsOutBubble")
    array.append("chatChannelViewsOverlayBubble")
    array.append("chatNavigationBack")
    array.append("peerInfoAddMember")
    array.append("chatSearchUp")
    array.append("chatSearchUpDisabled")
    array.append("chatSearchDown")
    array.append("chatSearchDownDisabled")
    array.append("chatSearchCalendar")
    array.append("dismissAccessory")
    array.append("chatScrollUp")
    array.append("chatScrollUpActive")
    array.append("chatSendMessage")
    array.append("chatSaveEditedMessage")
    array.append("chatRecordVoice")
    array.append("chatEntertainment")
    array.append("chatInlineDismiss")
    array.append("chatActiveReplyMarkup")
    array.append("chatDisabledReplyMarkup")
    array.append("chatSecretTimer")
    array.append("chatForwardMessagesActive")
    array.append("chatForwardMessagesInactive")
    array.append("chatDeleteMessagesActive")
    array.append("chatDeleteMessagesInactive")
    array.append("generalNext")
    array.append("generalNextActive")
    array.append("generalSelect")
    array.append("chatVoiceRecording")
    array.append("chatVideoRecording")
    array.append("chatRecord")
    array.append("deleteItem")
    array.append("deleteItemDisabled")
    array.append("chatAttach")
    array.append("chatAttachFile")
    array.append("chatAttachPhoto")
    array.append("chatAttachCamera")
    array.append("chatAttachLocation")
    array.append("chatAttachPoll")
    array.append("mediaEmptyShared")
    array.append("mediaEmptyFiles")
    array.append("mediaEmptyMusic")
    array.append("mediaEmptyLinks")
    array.append("stickersAddFeatured")
    array.append("stickersAddedFeatured")
    array.append("stickersRemove")
    array.append("peerMediaDownloadFileStart")
    array.append("peerMediaDownloadFilePause")
    array.append("stickersShare")
    array.append("emojiRecentTab")
    array.append("emojiSmileTab")
    array.append("emojiNatureTab")
    array.append("emojiFoodTab")
    array.append("emojiSportTab")
    array.append("emojiCarTab")
    array.append("emojiObjectsTab")
    array.append("emojiSymbolsTab")
    array.append("emojiFlagsTab")
    array.append("emojiRecentTabActive")
    array.append("emojiSmileTabActive")
    array.append("emojiNatureTabActive")
    array.append("emojiFoodTabActive")
    array.append("emojiSportTabActive")
    array.append("emojiCarTabActive")
    array.append("emojiObjectsTabActive")
    array.append("emojiSymbolsTabActive")
    array.append("emojiFlagsTabActive")
    array.append("stickerBackground")
    array.append("stickerBackgroundActive")
    array.append("stickersTabRecent")
    array.append("stickersTabGIF")
    array.append("chatSendingInFrame_incoming")
    array.append("chatSendingInHour_incoming")
    array.append("chatSendingInMin_incoming")
    array.append("chatSendingInFrame_outgoing")
    array.append("chatSendingInHour_outgoing")
    array.append("chatSendingInMin_outgoing")
    array.append("chatSendingOutFrame")
    array.append("chatSendingOutHour")
    array.append("chatSendingOutMin")
    array.append("chatSendingOverlayFrame")
    array.append("chatSendingOverlayHour")
    array.append("chatSendingOverlayMin")
    array.append("chatActionUrl")
    array.append("callInlineDecline")
    array.append("callInlineMuted")
    array.append("callInlineUnmuted")
    array.append("eventLogTriangle")
    array.append("channelIntro")
    array.append("chatFileThumb")
    array.append("chatFileThumbBubble_incoming")
    array.append("chatFileThumbBubble_outgoing")
    array.append("chatSecretThumb")
    array.append("chatSecretThumbSmall")
    array.append("chatMapPin")
    array.append("chatSecretTitle")
    array.append("emptySearch")
    array.append("calendarBack")
    array.append("calendarNext")
    array.append("calendarBackDisabled")
    array.append("calendarNextDisabled")
    array.append("newChatCamera")
    array.append("peerInfoVerify")
    array.append("peerInfoVerifyProfile")
    array.append("peerInfoCall")
    array.append("callOutgoing")
    array.append("recentDismiss")
    array.append("recentDismissActive")
    array.append("webgameShare")
    array.append("chatSearchCancel")
    array.append("chatSearchFrom")
    array.append("callWindowDecline")
    array.append("callWindowDeclineSmall")
    array.append("callWindowAccept")
    array.append("callWindowVideo")
    array.append("callWindowVideoActive")
    array.append("callWindowMute")
    array.append("callWindowMuteActive")
    array.append("callWindowClose")
    array.append("callWindowDeviceSettings")
    array.append("callSettings")
    array.append("callWindowCancel")
    array.append("chatActionEdit")
    array.append("chatActionInfo")
    array.append("chatActionMute")
    array.append("chatActionUnmute")
    array.append("chatActionClearHistory")
    array.append("chatActionDeleteChat")
    array.append("dismissPinned")
    array.append("chatActionsActive")
    array.append("chatEntertainmentSticker")
    array.append("chatEmpty")
    array.append("stickerPackClose")
    array.append("stickerPackDelete")
    array.append("modalShare")
    array.append("modalClose")
    array.append("ivChannelJoined")
    array.append("chatListMention")
    array.append("chatListMentionActive")
    array.append("chatListMentionArchived")
    array.append("chatListMentionArchivedActive")
    array.append("chatMention")
    array.append("chatMentionActive")
    array.append("sliderControl")
    array.append("sliderControlActive")
    array.append("chatInstantView")
    array.append("chatInstantViewBubble_incoming")
    array.append("chatInstantViewBubble_outgoing")
    array.append("instantViewShare")
    array.append("instantViewActions")
    array.append("instantViewActionsActive")
    array.append("instantViewSafari")
    array.append("instantViewBack")
    array.append("instantViewCheck")
    array.append("groupStickerNotFound")
    array.append("settingsAskQuestion")
    array.append("settingsFaq")
    array.append("settingsStories")
    array.append("settingsGeneral")
    array.append("settingsLanguage")
    array.append("settingsNotifications")
    array.append("settingsSecurity")
    array.append("settingsStickers")
    array.append("settingsStorage")
    array.append("settingsSessions")
    array.append("settingsProxy")
    array.append("settingsAppearance")
    array.append("settingsPassport")
    array.append("settingsWallet")
    array.append("settingsUpdate")
    array.append("settingsFilters")
    array.append("settingsPremium")
    array.append("settingsGiftPremium")
    array.append("settingsAskQuestionActive")
    array.append("settingsFaqActive")
    array.append("settingsStoriesActive")
    array.append("settingsGeneralActive")
    array.append("settingsLanguageActive")
    array.append("settingsNotificationsActive")
    array.append("settingsSecurityActive")
    array.append("settingsStickersActive")
    array.append("settingsStorageActive")
    array.append("settingsSessionsActive")
    array.append("settingsProxyActive")
    array.append("settingsAppearanceActive")
    array.append("settingsPassportActive")
    array.append("settingsWalletActive")
    array.append("settingsUpdateActive")
    array.append("settingsFiltersActive")
    array.append("settingsProfile")
    array.append("generalCheck")
    array.append("settingsAbout")
    array.append("settingsLogout")
    array.append("fastSettingsLock")
    array.append("fastSettingsDark")
    array.append("fastSettingsSunny")
    array.append("fastSettingsMute")
    array.append("fastSettingsUnmute")
    array.append("chatRecordVideo")
    array.append("inputChannelMute")
    array.append("inputChannelUnmute")
    array.append("changePhoneNumberIntro")
    array.append("peerSavedMessages")
    array.append("previewSenderCollage")
    array.append("previewSenderPhoto")
    array.append("previewSenderFile")
    array.append("previewSenderCrop")
    array.append("previewSenderDelete")
    array.append("previewSenderDeleteFile")
    array.append("previewSenderArchive")
    array.append("chatGroupToggleSelected")
    array.append("chatGroupToggleUnselected")
    array.append("successModalProgress")
    array.append("accentColorSelect")
    array.append("transparentBackground")
    array.append("lottieTransparentBackground")
    array.append("passcodeTouchId")
    array.append("passcodeLogin")
    array.append("confirmDeleteMessagesAccessory")
    array.append("alertCheckBoxSelected")
    array.append("alertCheckBoxUnselected")
    array.append("confirmPinAccessory")
    array.append("confirmDeleteChatAccessory")
    array.append("stickersEmptySearch")
    array.append("twoStepVerificationCreateIntro")
    array.append("secureIdAuth")
    array.append("ivAudioPlay")
    array.append("ivAudioPause")
    array.append("proxyEnable")
    array.append("proxyEnabled")
    array.append("proxyState")
    array.append("proxyDeleteListItem")
    array.append("proxyInfoListItem")
    array.append("proxyConnectedListItem")
    array.append("proxyAddProxy")
    array.append("proxyNextWaitingListItem")
    array.append("passportForgotPassword")
    array.append("confirmAppAccessoryIcon")
    array.append("passportPassport")
    array.append("passportIdCardReverse")
    array.append("passportIdCard")
    array.append("passportSelfie")
    array.append("passportDriverLicense")
    array.append("chatOverlayVoiceRecording")
    array.append("chatOverlayVideoRecording")
    array.append("chatOverlaySendRecording")
    array.append("chatOverlayLockArrowRecording")
    array.append("chatOverlayLockerBodyRecording")
    array.append("chatOverlayLockerHeadRecording")
    array.append("locationPin")
    array.append("locationMapPin")
    array.append("locationMapLocate")
    array.append("locationMapLocated")
    array.append("passportSettings")
    array.append("passportInfo")
    array.append("editMessageMedia")
    array.append("playerMusicPlaceholder")
    array.append("chatMusicPlaceholder")
    array.append("chatMusicPlaceholderCap")
    array.append("searchArticle")
    array.append("searchSaved")
    array.append("archivedChats")
    array.append("hintPeerActive")
    array.append("hintPeerActiveSelected")
    array.append("chatSwiping_delete")
    array.append("chatSwiping_mute")
    array.append("chatSwiping_unmute")
    array.append("chatSwiping_read")
    array.append("chatSwiping_unread")
    array.append("chatSwiping_pin")
    array.append("chatSwiping_unpin")
    array.append("chatSwiping_archive")
    array.append("chatSwiping_unarchive")
    array.append("galleryPrev")
    array.append("galleryNext")
    array.append("galleryMore")
    array.append("galleryShare")
    array.append("galleryFastSave")
    array.append("galleryRotate")
    array.append("galleryZoomIn")
    array.append("galleryZoomOut")
    array.append("editMessageCurrentPhoto")
    array.append("videoPlayerPlay")
    array.append("videoPlayerPause")
    array.append("videoPlayerEnterFullScreen")
    array.append("videoPlayerExitFullScreen")
    array.append("videoPlayerPIPIn")
    array.append("videoPlayerPIPOut")
    array.append("videoPlayerRewind15Forward")
    array.append("videoPlayerRewind15Backward")
    array.append("videoPlayerVolume")
    array.append("videoPlayerVolumeOff")
    array.append("videoPlayerClose")
    array.append("videoPlayerSliderInteractor")
    array.append("streamingVideoDownload")
    array.append("videoCompactFetching")
    array.append("compactStreamingFetchingCancel")
    array.append("customLocalizationDelete")
    array.append("pollAddOption")
    array.append("pollDeleteOption")
    array.append("resort")
    array.append("chatPollVoteUnselected")
    array.append("chatPollVoteUnselectedBubble_incoming")
    array.append("chatPollVoteUnselectedBubble_outgoing")
    array.append("peerInfoAdmins")
    array.append("peerInfoPermissions")
    array.append("peerInfoBanned")
    array.append("peerInfoMembers")
    array.append("chatUndoAction")
    array.append("appUpdate")
    array.append("inlineVideoSoundOff")
    array.append("inlineVideoSoundOn")
    array.append("logoutOptionAddAccount")
    array.append("logoutOptionSetPasscode")
    array.append("logoutOptionClearCache")
    array.append("logoutOptionChangePhoneNumber")
    array.append("logoutOptionContactSupport")
    array.append("disableEmojiPrediction")
    array.append("scam")
    array.append("scamActive")
    array.append("chatScam")
    array.append("fake")
    array.append("fakeActive")
    array.append("chatFake")
    array.append("chatUnarchive")
    array.append("chatArchive")
    array.append("privacySettings_blocked")
    array.append("privacySettings_activeSessions")
    array.append("privacySettings_passcode")
    array.append("privacySettings_twoStep")
    array.append("privacy_settings_autodelete")
    array.append("deletedAccount")
    array.append("stickerPackSelection")
    array.append("stickerPackSelectionActive")
    array.append("entertainment_Emoji")
    array.append("entertainment_Stickers")
    array.append("entertainment_Gifs")
    array.append("entertainment_Search")
    array.append("entertainment_Settings")
    array.append("entertainment_SearchCancel")
    array.append("entertainment_AnimatedEmoji")
    array.append("scheduledAvatar")
    array.append("scheduledInputAction")
    array.append("verifyDialog")
    array.append("verifyDialogActive")
    array.append("chatInputScheduled")
    array.append("appearanceAddPlatformTheme")
    
    array.append("wallet_close")
    array.append("wallet_qr")
    array.append("wallet_receive")
    array.append("wallet_send")
    array.append("wallet_settings")
    array.append("wallet_update")
    
    array.append("wallet_passcode_visible")
    array.append("wallet_passcode_hidden")
    

    array.append("wallpaper_color_close")
    array.append("wallpaper_color_add")
    array.append("wallpaper_color_swap")
    array.append("wallpaper_color_rotate")
    array.append("wallpaper_color_play")

    
    
    array.append("login_cap")
    array.append("login_qr_cap")

    array.append("login_qr_empty_cap")
    
    array.append("chat_failed_scroller")
    array.append("chat_failed_scroller_active")

    array.append("poll_quiz_unselected")
    
    array.append("poll_selected")
    array.append("poll_selection")
    array.append("poll_selected_correct")
    array.append("poll_selected_incorrect")

    
    array.append("poll_selected_incoming")
    array.append("poll_selection_incoming")
    array.append("poll_selected_correct_incoming")
    array.append("poll_selected_incorrect_incoming")

    array.append("poll_selected_outgoing")
    array.append("poll_selection_outgoing")
    array.append("poll_selected_correct_outgoing")
    array.append("poll_selected_incorrect_outgoing")
    
    array.append("chat_filter_edit")
    array.append("chat_filter_add")
    array.append("chat_filter_bots")
    array.append("chat_filter_channels")
    array.append("chat_filter_custom")
    array.append("chat_filter_groups")
    array.append("chat_filter_muted")
    array.append("chat_filter_private_chats")
    array.append("chat_filter_read")
    array.append("chat_filter_secret_chats")
    array.append("chat_filter_unmuted")
    array.append("chat_filter_unread")
    array.append("chat_filter_large_groups")
    array.append("chat_filter_non_contacts")
    array.append("chat_filter_archive")

    array.append("chat_filter_bots_avatar")
    array.append("chat_filter_channels_avatar")
    array.append("chat_filter_custom_avatar")
    array.append("chat_filter_groups_avatar")
    array.append("chat_filter_muted_avatar")
    array.append("chat_filter_private_chats_avatar")
    array.append("chat_filter_read_avatar")
    array.append("chat_filter_secret_chats_avatar")
    array.append("chat_filter_unmuted_avatar")
    array.append("chat_filter_unread_avatar")
    array.append("chat_filter_large_groups_avatar")
    array.append("chat_filter_non_contacts_avatar")
    array.append("chat_filter_archive_avatar")
    

    array.append("group_invite_via_link")
    

    array.append("tab_contacts")
    array.append("tab_contacts_active")
    array.append("tab_calls")
    array.append("tab_calls_active")
    array.append("tab_chats")
    array.append("tab_chats_active")
    array.append("tab_chats_active_filters")
    array.append("tab_settings")
    array.append("tab_settings_active")
    
    
    array.append("profile_add_member")
    array.append("profile_call")
    array.append("profile_video_call")
    array.append("profile_leave")
    array.append("profile_message")
    array.append("profile_more")
    array.append("profile_mute")
    array.append("profile_unmute")
    array.append("profile_search")
    array.append("profile_secret_chat")
    array.append("profile_edit_photo")
    array.append("profile_block")
    array.append("profile_report")
    array.append("profile_share")
    array.append("profile_stats")
    array.append("profile_unblock")
    array.append("profile_translate")
    array.append("profile_join_channel")

    array.append("chat_quiz_explanation")
    array.append("chat_quiz_explanation_bubble_incoming")
    array.append("chat_quiz_explanation_bubble_outgoing")
    
    
    array.append("stickers_add_featured")
    array.append("stickers_add_featured_unread")
    
    array.append("stickers_add_featured_active")
    array.append("stickers_add_featured_unread_active")

    
    array.append("stickers_favorite")
    array.append("stickers_favorite_active")

    array.append("channel_info_promo")
    array.append("channel_info_promo_bubble_incoming")
    array.append("channel_info_promo_bubble_outgoing")
    
    array.append("chat_share_message")
    array.append("chat_goto_message")
    array.append("chat_swipe_reply")
    array.append("chat_like_message")
    array.append("chat_like_message_unlike")
    
    array.append("chat_like_inside")
    array.append("chat_like_inside_bubble_incoming")
    array.append("chat_like_inside_bubble_outgoing")
    array.append("chat_like_inside_bubble_overlay")
    
    array.append("chat_like_inside_empty")
    array.append("chat_like_inside_empty_bubble_incoming")
    array.append("chat_like_inside_empty_bubble_outgoing")
    array.append("chat_like_inside_empty_bubble_overlay")

    
    array.append("gif_trending")
    array.append("gif_trending_active")

    array.append("gif_recent")
    array.append("gif_recent_active")

    
    array.append("chat_list_thumb_play")

    
    
    
    array.append("call_tooltip_battery_low")
    array.append("call_tooltip_camera_off")
    array.append("call_tooltip_micro_off")
    
    array.append("call_screen_sharing")
    array.append("call_screen_sharing_active")

    array.append("call_screen_settings")

    
    array.append("search_filter")
    array.append("search_filter_media")
    array.append("search_filter_files")
    array.append("search_filter_links")
    array.append("search_filter_music")
    array.append("search_filter_downloads")
    array.append("search_filter_add_peer")
    array.append("search_filter_add_peer_active")

    
    array.append("chat_reply_count_bubble_incoming")
    array.append("chat_reply_count_bubble_outgoing")
    array.append("chat_reply_count")
    array.append("chat_reply_count_overlay")
    
    array.append("channel_comments_bubble")
    array.append("channel_comments_bubble_next")
    array.append("channel_comments_list")
    array.append("channel_comments_overlay")
    
    array.append("chat_replies_avatar")

    
    array.append("group_selection_foreground")
    array.append("group_selection_foreground_bubble_incoming")
    array.append("group_selection_foreground_bubble_outgoing")
    
    
    array.append("chat_pinned_list")
    
    array.append("chat_pinned_message")
    array.append("chat_pinned_message_bubble_incoming")
    array.append("chat_pinned_message_bubble_outgoing")
    array.append("chat_pinned_message_overlay_bubble")
    
    
    array.append("chat_voicechat_can_unmute")
    array.append("chat_voicechat_cant_unmute")
    array.append("chat_voicechat_unmuted")

    array.append("profile_voice_chat")
    
    array.append("chat_voice_chat")
    array.append("chat_voice_chat_active")
    
    array.append("editor_draw")
    array.append("editor_delete")
    array.append("editor_crop")

    array.append("fast_copy_link")

    array.append("profile_channel_sign")
    array.append("profile_channel_type")
    array.append("profile_group_type")
    array.append("profile_group_topics")
    array.append("profile_group_destruct")
    array.append("profile_group_discussion")
    
    array.append("profile_requests")
    array.append("profile_reactions")
    array.append("profile_channel_color")
    array.append("profile_channel_stats")

    array.append("profile_removed")
    array.append("profile_links")

    array.append("destruct_clear_history")

    array.append("chat_gigagroup_info")
    
    
    array.append("playlist_next")
    array.append("playlist_prev")
    array.append("playlist_next_locked")
    array.append("playlist_prev_locked")

    array.append("playlist_random")
    array.append("playlist_order_normal")
    array.append("playlist_order_reversed")
    array.append("playlist_order_random")

    array.append("playlist_repeat_none")
    array.append("playlist_repeat_circle")
    array.append("playlist_repeat_one")
    
    array.append("audioplayer_next")
    array.append("audioplayer_prev")
    array.append("audioplayer_dismiss")
    array.append("audioplayer_repeat_none")
    array.append("audioplayer_repeat_circle")
    array.append("audioplayer_repeat_one")
    array.append("audioplayer_locked_next")
    array.append("audioplayer_locked_prev")
    array.append("audioplayer_volume")
    array.append("audioplayer_volume_off")
    array.append("audioplayer_speed_x1")
    array.append("audioplayer_speed_x2")

    array.append("chat_info_voice_chat")
    
    array.append("chat_info_create_group")
    array.append("chat_info_change_colors")

    array.append("empty_chat_system")
    array.append("empty_chat_dark")
    array.append("empty_chat_light")
    array.append("empty_chat_system_active")
    array.append("empty_chat_dark_active")
    array.append("empty_chat_light_active")
    
    
    array.append("empty_chat_storage_clear")
    array.append("empty_chat_storage_low")
    array.append("empty_chat_storage_medium")
    array.append("empty_chat_storage_high")
    array.append("empty_chat_storage_low_active")
    array.append("empty_chat_storage_medium_active")
    array.append("empty_chat_storage_high_active")
    
    
    array.append("empty_chat_stickers_none")
    array.append("empty_chat_stickers_mysets")
    array.append("empty_chat_stickers_allsets")
    array.append("empty_chat_stickers_none_active")
    array.append("empty_chat_stickers_mysets_active")
    array.append("empty_chat_stickers_allsets_active")
    
    array.append("chat_action_dismiss")
    array.append("chat_action_edit_message")
    array.append("chat_action_forward_message")
    array.append("chat_action_reply_message")
    array.append("chat_action_url_preview")
    
    array.append("chat_action_menu_update_chat")
    array.append("chat_action_menu_selected")
    
    
    array.append("widget_peers_favorite")
    array.append("widget_peers_recent")
    array.append("widget_peers_both")
    array.append("widget_peers_favorite_active")
    array.append("widget_peers_recent_active")
    array.append("widget_peers_both_active")
    
    array.append("chat_reactions_add")
    array.append("chat_reactions_add_bubble")
    array.append("chat_reactions_add_active")

    
    array.append("reactions_badge")
    array.append("reactions_badge_active")

    array.append("reactions_badge_archive")
    array.append("reactions_badge_archive_active")

    array.append("reactions_show_more")
    
    array.append("chat_reactions_badge")
    array.append("chat_reactions_badge_active")
    
    
    array.append("gallery_pip_close")
    array.append("gallery_pip_muted")
    array.append("gallery_pip_unmuted")
    array.append("gallery_pip_out")
    array.append("gallery_pip_pause")
    array.append("gallery_pip_play")
    
    array.append("notification_sound_add")
    
    array.append("premium_lock")
    array.append("premium_lock_gray")
    array.append("premium_plus")

    array.append("premium_account")
    array.append("premium_account_active")

    array.append("premium_account_rev")
    array.append("premium_account_rev_active")
    
    array.append("premium_account_small")
    array.append("premium_account_small_active")
    array.append("premium_account_small_rev")
    array.append("premium_account_small_rev_active")
    array.append("premium_reaction_lock")
    array.append("premium_boarding_feature_next")
    array.append("premium_stickers")
    array.append("premium_emoji_lock")
    
    
    array.append("account_add_account")
    array.append("account_set_status")
    array.append("account_change_status")
    
    
    array.append("chat_premium_status_red")
    array.append("chat_premium_status_orange")
    array.append("chat_premium_status_violet")
    array.append("chat_premium_status_green")
    array.append("chat_premium_status_cyan")
    array.append("chat_premium_status_light_blue")
    array.append("chat_premium_status_blue")

    
    array.append("extend_content_lock")
    
    array.append("chatlist_forum_closed_topic")
    array.append("chatlist_forum_closed_topic_active")
    
    array.append("chatlist_arrow")
    array.append("chatlist_arrow_active")
    
    array.append("dialog_auto_delete")
    
    array.append("contact_set_photo")
    array.append("contact_suggest_photo")
    
    array.append("send_media_spoiler")
    array.append("general_delete")
    
    array.append("storage_music_play")
    array.append("storage_music_pause")
    array.append("storage_media_play")

    array.append("general_chevron_up")
    array.append("general_chevron_down")
    
    array.append("account_settings_set_password")
    
    array.append("select_peer_create_channel")
    array.append("select_peer_create_group")
    array.append("chat_translate")
    
    array.append("msg_emoji_activities")
    array.append("msg_emoji_angry")
    array.append("msg_emoji_away")
    array.append("msg_emoji_bath")
    array.append("msg_emoji_busy")
    array.append("msg_emoji_dislike")
    array.append("msg_emoji_food")
    array.append("msg_emoji_haha")
    array.append("msg_emoji_happy")
    array.append("msg_emoji_heart")
    array.append("msg_emoji_hi2")
    array.append("msg_emoji_home")
    array.append("msg_emoji_like")
    array.append("msg_emoji_neutral")
    array.append("msg_emoji_omg")
    array.append("msg_emoji_party")
    array.append("msg_emoji_recent")
    array.append("msg_emoji_sad")
    array.append("msg_emoji_sleep")
    array.append("msg_emoji_study")
    array.append("msg_emoji_tongue")
    array.append("msg_emoji_vacation")
    array.append("msg_emoji_what")
    array.append("msg_emoji_work")

    
    array.append("installed_stickers_archive")
    array.append("installed_stickers_custom_emoji")
    array.append("installed_stickers_dynamic_order")
    array.append("installed_stickers_loop")
    array.append("installed_stickers_reactions")
    array.append("installed_stickers_suggest")
    array.append("installed_stickers_trending")

    
    array.append("folder_invite_link")
    array.append("folder_invite_link_revoked")

    array.append("folders_sidebar_edit")
    array.append("folders_sidebar_edit_active")
    
    array.append("story_unseen")
    array.append("story_seen")
    array.append("story_selected")

    array.append("story_unseen_chat")
    array.append("story_seen_chat")

    
    array.append("story_unseen_profile")
    array.append("story_seen_profile")

    
    array.append("story_view_read")
    array.append("story_view_reaction")
    
    array.append("story_chatlist_reply")
    array.append("story_chatlist_reply_active")
    
    
    array.append("message_story_expired")
    array.append("message_story_expired_bubble_incoming")
    array.append("message_story_expired_bubble_outgoing")
    
    
    array.append("message_quote_accent")
    array.append("message_quote_red")
    array.append("message_quote_orange")
    array.append("message_quote_violet")
    array.append("message_quote_green")
    array.append("message_quote_cyan")
    array.append("message_quote_blue")
    array.append("message_quote_pink")
    
    array.append("message_quote_bubble_incoming")
    array.append("message_quote_bubble_outgoing")

    array.append("channel_stats_likes")
    array.append("channel_stats_shares")
    
    array.append("story_repost_from_white")
    array.append("story_repost_from_green")

    return array
}
//swift ./tools/generate-images.swift


func generateClass() -> String {
    
    let items = initialize()
    
    var lines:[String] = []
    lines.append("import SwiftSignalKit")
    lines.append("import AppKit")
    lines.append("")

    lines.append("public final class TelegramIconsTheme {")
    
    lines.append("  private var cached:Atomic<[String: CGImage]> = Atomic(value: [:])")
    lines.append("  private var cachedWithInset:Atomic<[String: (CGImage, NSEdgeInsets)]> = Atomic(value: [:])")
    lines.append("")
    for item in items {
        if item.hasSuffix("_withInset") {
            lines.append("  public var \(item): (CGImage, NSEdgeInsets) {")
            lines.append("      if let image = cachedWithInset.with({ $0[\"\(item)\"] }) {")
            lines.append("          return image")
            lines.append("      } else {")
            lines.append("          let image = _\(item)()")
            lines.append("          _ = cachedWithInset.modify { current in ")
            lines.append("              var current = current")
            lines.append("              current[\"\(item)\"] = image")
            lines.append("              return current")
            lines.append("          }")

            
            lines.append("          return image")
            lines.append("      }")
            lines.append("  }")
        } else {
            lines.append("  public var \(item): CGImage {")
            lines.append("      if let image = cached.with({ $0[\"\(item)\"] }) {")
            lines.append("          return image")
            lines.append("      } else {")
            lines.append("          let image = _\(item)()")
            lines.append("          _ = cached.modify { current in ")
            lines.append("              var current = current")
            lines.append("              current[\"\(item)\"] = image")
            lines.append("              return current")
            lines.append("          }")

            
            lines.append("          return image")
            lines.append("      }")
            lines.append("  }")
        }
        
    }
    lines.append("")
    
    for item in items {
        if item.hasSuffix("_withInset") {
            lines.append("  private let _\(item): ()->(CGImage, NSEdgeInsets)")
        } else {
            lines.append("  private let _\(item): ()->CGImage")
        }
    }
    
    lines.append("")
    
    lines.append("  public init(")
    for item in items {
        if item != items.last {
            if item.hasSuffix("_withInset") {
                lines.append("      \(item): @escaping()->(CGImage, NSEdgeInsets),")
            } else {
                lines.append("      \(item): @escaping()->CGImage,")
            }
        } else {
            if item.hasSuffix("_withInset") {
                lines.append("      \(item): @escaping()->(CGImage, NSEdgeInsets)")
            } else {
                lines.append("      \(item): @escaping()->CGImage")
            }
        }
    }
    lines.append("  ) {")
    
    for item in items {
        lines.append("      self._\(item) = \(item)")
    }
    
    lines.append("  }")
    
    
    lines.append("}")
    
    let result = lines.joined(separator: "\n")
    
    
    
    return result
}

print(FileManager.default.currentDirectoryPath)
try! generateClass().write(toFile: FileManager.default.currentDirectoryPath + "/packages/TelegramIconsTheme/Sources/TelegramIconsTheme.swift", atomically: true, encoding: .utf8)
