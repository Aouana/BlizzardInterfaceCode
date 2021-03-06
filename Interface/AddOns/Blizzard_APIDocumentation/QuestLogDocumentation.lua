local QuestLog =
{
	Name = "QuestLog",
	Type = "System",
	Namespace = "C_QuestLog",

	Functions =
	{
		{
			Name = "GetMapForQuestPOIs",
			Type = "Function",

			Returns =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMaxNumQuests",
			Type = "Function",

			Returns =
			{
				{ Name = "maxNumQuests", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "title", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetQuestsOnMap",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "quests", Type = "table", InnerType = "QuestOnMapInfo", Nilable = false },
			},
		},
		{
			Name = "GetZoneStoryInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "achievementID", Type = "number", Nilable = false },
				{ Name = "storyMapID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsOnQuest",
			Type = "Function",

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isOnQuest", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetMapForQuestPOIs",
			Type = "Function",

			Arguments =
			{
				{ Name = "uiMapID", Type = "number", Nilable = false },
			},
		},
	},

	Events =
	{
		{
			Name = "QuestAccepted",
			Type = "Event",
			LiteralName = "QUEST_ACCEPTED",
			Payload =
			{
				{ Name = "questIndex", Type = "number", Nilable = false },
				{ Name = "questId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestAutocomplete",
			Type = "Event",
			LiteralName = "QUEST_AUTOCOMPLETE",
			Payload =
			{
				{ Name = "questId", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestComplete",
			Type = "Event",
			LiteralName = "QUEST_COMPLETE",
		},
		{
			Name = "QuestDetail",
			Type = "Event",
			LiteralName = "QUEST_DETAIL",
			Payload =
			{
				{ Name = "questStartItemID", Type = "number", Nilable = true },
			},
		},
		{
			Name = "QuestLogCriteriaUpdate",
			Type = "Event",
			LiteralName = "QUEST_LOG_CRITERIA_UPDATE",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "specificTreeID", Type = "number", Nilable = false },
				{ Name = "description", Type = "string", Nilable = false },
				{ Name = "numFulfilled", Type = "number", Nilable = false },
				{ Name = "numRequired", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestLogUpdate",
			Type = "Event",
			LiteralName = "QUEST_LOG_UPDATE",
		},
		{
			Name = "QuestPoiUpdate",
			Type = "Event",
			LiteralName = "QUEST_POI_UPDATE",
		},
		{
			Name = "QuestRemoved",
			Type = "Event",
			LiteralName = "QUEST_REMOVED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestTurnedIn",
			Type = "Event",
			LiteralName = "QUEST_TURNED_IN",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "xpReward", Type = "number", Nilable = false },
				{ Name = "moneyReward", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestWatchListChanged",
			Type = "Event",
			LiteralName = "QUEST_WATCH_LIST_CHANGED",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = true },
				{ Name = "added", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "QuestWatchUpdate",
			Type = "Event",
			LiteralName = "QUEST_WATCH_UPDATE",
			Payload =
			{
				{ Name = "questIndex", Type = "number", Nilable = false },
			},
		},
		{
			Name = "QuestlineUpdate",
			Type = "Event",
			LiteralName = "QUESTLINE_UPDATE",
		},
		{
			Name = "SuperTrackedQuestChanged",
			Type = "Event",
			LiteralName = "SUPER_TRACKED_QUEST_CHANGED",
			Payload =
			{
				{ Name = "superTrackedQuestID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TaskProgressUpdate",
			Type = "Event",
			LiteralName = "TASK_PROGRESS_UPDATE",
		},
		{
			Name = "WorldQuestCompletedBySpell",
			Type = "Event",
			LiteralName = "WORLD_QUEST_COMPLETED_BY_SPELL",
			Payload =
			{
				{ Name = "questID", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "QuestTag",
			Type = "Enumeration",
			NumValues = 10,
			MinValue = 0,
			MaxValue = 102,
			Fields =
			{
				{ Name = "Group", Type = "QuestTag", EnumValue = 1 },
				{ Name = "Pvp", Type = "QuestTag", EnumValue = 41 },
				{ Name = "Raid", Type = "QuestTag", EnumValue = 62 },
				{ Name = "Dungeon", Type = "QuestTag", EnumValue = 81 },
				{ Name = "Legendary", Type = "QuestTag", EnumValue = 83 },
				{ Name = "Heroic", Type = "QuestTag", EnumValue = 85 },
				{ Name = "Raid10", Type = "QuestTag", EnumValue = 88 },
				{ Name = "Raid25", Type = "QuestTag", EnumValue = 89 },
				{ Name = "Scenario", Type = "QuestTag", EnumValue = 98 },
				{ Name = "Account", Type = "QuestTag", EnumValue = 102 },
			},
		},
		{
			Name = "QuestOnMapInfo",
			Type = "Structure",
			Fields =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "x", Type = "number", Nilable = false },
				{ Name = "y", Type = "number", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(QuestLog);